# NAME #

Mason::Plugin::CatchCompException - Enable components to catch their own exceptions.

# SYNOPSIS

    <%catch "Error message">
        # do something (error message is in $error)

        #then:
        $.discard();
        # or
        $.retain();
        # or

        # neither - error rethrown
    </%catch>

    <%catch "My::Exception::Class">
    % if ($error->message eq 'Not serious') {
    %     $.retain();    # keep any output, but throw away the exception
    <p>Don't worry, be happy.</p>
    % elsif ($error->message eq 'Bad news') {
    %     $.discard();   # throw away output, and the exception    
	<p>The news is bad!</p>
	% }
    % 					 # unhandled - CatchCompException will re-throw
    </%catch>

    Type                         How caught      Comment
    .mc, page                    handle()        Blocks further output
    .mc, comp                    comp()          OK
    .mi                          comp()          OK
    .mp with handle(), page
    .mp with handle(), comp
    .mp, bare, page
    .mp, bare, comp              comp()          OK


function [ action ] = policy( Qstate, currentPossActions,  epsilon )
    % Given state and state-action values for this state choose an action
    % from that state. Action is an integer in [1,4].
    [~, greedyAction] = max(Qstate);
    nActions = length(currentPossActions);
    prob = rand;
    if prob < 1-epsilon+epsilon/nActions
        action = greedyAction;
    else
        action = datasample(currentPossActions, 1);
    end
    
end


package com.firstorion.libcyd;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/ChallengeResponseHandler.class */
public interface ChallengeResponseHandler {
    void onChallengeCompletionFailed(Object obj, ChallengeFailureReason challengeFailureReason, ChallengeFailureRemedyKind challengeFailureRemedyKind);

    void onChallengeCompletionSucceeded(Object obj);

    void onChallengeInitiationFailed(Object obj, ChallengeFailureReason challengeFailureReason, ChallengeFailureRemedyKind challengeFailureRemedyKind);

    void onChallengeInitiationSucceeded(Object obj);
}

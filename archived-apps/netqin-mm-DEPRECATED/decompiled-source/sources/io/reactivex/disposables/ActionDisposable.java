package io.reactivex.disposables;

import io.reactivex.internal.util.ExceptionHelper;
import p530d.p541c.p542a0.AbstractC9638a;
/* loaded from: classes2-dex2jar.jar:io/reactivex/disposables/ActionDisposable.class */
public final class ActionDisposable extends ReferenceDisposable<AbstractC9638a> {
    public static final long serialVersionUID = -8219729196779211169L;

    public ActionDisposable(AbstractC9638a aVar) {
        super(aVar);
    }

    public void onDisposed(AbstractC9638a aVar) {
        try {
            aVar.run();
        } catch (Throwable th) {
            throw ExceptionHelper.m222b(th);
        }
    }
}

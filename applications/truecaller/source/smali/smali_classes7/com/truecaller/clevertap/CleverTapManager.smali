.class public interface abstract Lcom/truecaller/clevertap/CleverTapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008f\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0006H&\u00a2\u0006\u0004\u0008\u000b\u0010\nJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH&\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0010H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0011J#\u0010\u000e\u001a\u00020\u00062\u0012\u0010\r\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012H&\u00a2\u0006\u0004\u0008\u000e\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0014H&\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J+\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00042\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00010\u0012H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u0017\u0010\u001a\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0004H&\u00a2\u0006\u0004\u0008\u001a\u0010\u001cJ\u0019\u0010\u001f\u001a\u00020\u00062\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001dH&\u00a2\u0006\u0004\u0008\u001f\u0010 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/clevertap/CleverTapManager;",
        "",
        "Le/a/d4/e;",
        "engine",
        "",
        "pushId",
        "Ls1/s;",
        "updatePushRegistrationId",
        "(Le/a/d4/e;Ljava/lang/String;)V",
        "init",
        "()V",
        "initWithoutActivityLifeCycleCallBacks",
        "Le/a/g3/m;",
        "profileUpdate",
        "updateProfile",
        "(Le/a/g3/m;)V",
        "Le/a/g3/n;",
        "(Le/a/g3/n;)V",
        "",
        "(Ljava/util/Map;)V",
        "Lcom/truecaller/clevertap/CleverTapProfile;",
        "profile",
        "onUserLogin",
        "(Lcom/truecaller/clevertap/CleverTapProfile;)V",
        "eventName",
        "eventActions",
        "push",
        "(Ljava/lang/String;Ljava/util/Map;)V",
        "(Ljava/lang/String;)V",
        "Landroid/content/Intent;",
        "intent",
        "mayBeProcessNotificationExtras",
        "(Landroid/content/Intent;)V",
        "clevertap_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# virtual methods
.method public abstract init()V
.end method

.method public abstract initWithoutActivityLifeCycleCallBacks()V
.end method

.method public abstract mayBeProcessNotificationExtras(Landroid/content/Intent;)V
.end method

.method public abstract onUserLogin(Lcom/truecaller/clevertap/CleverTapProfile;)V
.end method

.method public abstract push(Ljava/lang/String;)V
.end method

.method public abstract push(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateProfile(Le/a/g3/m;)V
.end method

.method public abstract updateProfile(Le/a/g3/n;)V
.end method

.method public abstract updateProfile(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updatePushRegistrationId(Le/a/d4/e;Ljava/lang/String;)V
.end method

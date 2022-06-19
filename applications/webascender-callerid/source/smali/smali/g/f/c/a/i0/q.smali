.class public final Lg/f/c/a/i0/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/v;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;Lg/f/c/a/i0/c0;Lg/f/c/a/i0/y$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lg/f/c/a/i0/y;->b(Ljava/security/interfaces/ECPublicKey;)V

    .line 3
    invoke-static {p2}, Lg/f/c/a/i0/p0;->f(Lg/f/c/a/i0/c0;)Ljava/lang/String;

    return-void
.end method

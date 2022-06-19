.class public final Lg/f/c/a/i0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/c/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPublicKey;[BLjava/lang/String;Lg/f/c/a/i0/y$d;Lg/f/c/a/i0/r;)V
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

    return-void
.end method

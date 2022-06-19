.class public final Lg/f/c/a/i0/s0;
.super Lg/f/c/a/i0/n;
.source "SourceFile"


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg/f/c/a/i0/n;-><init>([B)V

    return-void
.end method


# virtual methods
.method g([BI)Lg/f/c/a/i0/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    new-instance v0, Lg/f/c/a/i0/r0;

    invoke-direct {v0, p1, p2}, Lg/f/c/a/i0/r0;-><init>([BI)V

    return-object v0
.end method

.class abstract Li/a/d/f/y/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/d/f/y/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(JLjava/lang/String;Li/a/a/c/j;I)Li/a/d/f/y/d;
    .locals 7

    .line 1
    new-instance v6, Li/a/d/f/y/a;

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move-wide v3, p0

    move v5, p4

    invoke-direct/range {v0 .. v5}, Li/a/d/f/y/a;-><init>(Ljava/lang/String;Li/a/a/c/j;JI)V

    return-object v6
.end method

.class public final Le/a/t2/a/b/a/d$b;
.super Lp3/a/q1/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t2/a/b/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lp3/a/q1/a<",
        "Le/a/t2/a/b/a/d$b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/d;Lp3/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lp3/a/q1/a;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-void
.end method

.method public constructor <init>(Lp3/a/d;Lp3/a/c;Le/a/t2/a/b/a/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lp3/a/q1/a;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/d;Lp3/a/c;)Lp3/a/q1/c;
    .locals 1

    .line 1
    new-instance v0, Le/a/t2/a/b/a/d$b;

    invoke-direct {v0, p1, p2}, Le/a/t2/a/b/a/d$b;-><init>(Lp3/a/d;Lp3/a/c;)V

    return-object v0
.end method

.class public abstract Le/a/p5/v0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/p5/v0/a$a;,
        Le/a/p5/v0/a$c;,
        Le/a/p5/v0/a$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Le/a/p5/v0/a$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/p5/v0/a$c;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Le/a/p5/v0/a$c;

    .line 3
    iget-object v0, v0, Le/a/p5/v0/a$c;->b:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_1
    instance-of v0, p0, Le/a/p5/v0/a$b;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Le/a/p5/v0/a$b;

    .line 5
    iget-object v0, v0, Le/a/p5/v0/a$b;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    .line 6
    :cond_2
    new-instance v0, Ls1/i;

    invoke-direct {v0}, Ls1/i;-><init>()V

    throw v0
.end method

.method public abstract b()Ljava/lang/Integer;
.end method

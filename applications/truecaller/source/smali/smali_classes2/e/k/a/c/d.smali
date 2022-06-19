.class public interface abstract Le/k/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/n0/t;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d$a;
    }
.end annotation


# static fields
.field public static final I:Le/k/a/a/k$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v7, Le/k/a/a/k$d;

    .line 2
    sget-object v2, Le/k/a/a/k$c;->a:Le/k/a/a/k$c;

    sget-object v5, Le/k/a/a/k$b;->c:Le/k/a/a/k$b;

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/k/a/a/k$d;-><init>(Ljava/lang/String;Le/k/a/a/k$c;Ljava/lang/String;Ljava/lang/String;Le/k/a/a/k$b;Ljava/lang/Boolean;)V

    .line 3
    sput-object v7, Le/k/a/c/d;->I:Le/k/a/a/k$d;

    .line 4
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    return-void
.end method


# virtual methods
.method public abstract c()Le/k/a/c/g0/i;
.end method

.method public abstract d()Le/k/a/c/v;
.end method

.method public abstract e(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation
.end method

.method public abstract f(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation
.end method

.method public abstract getMetadata()Le/k/a/c/u;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Le/k/a/c/i;
.end method

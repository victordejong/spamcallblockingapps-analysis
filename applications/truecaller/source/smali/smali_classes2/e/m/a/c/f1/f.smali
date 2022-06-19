.class public final Le/m/a/c/f1/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/f1/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Le/m/a/c/f1/g;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/a/c/f1/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/f1/c$a;


# direct methods
.method public constructor <init>(Le/m/a/c/f1/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/f1/f;->a:Le/m/a/c/f1/c$a;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public b()Le/m/a/c/f1/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/f1/f;->a:Le/m/a/c/f1/c$a;

    return-object v0
.end method

.method public c()Le/m/a/c/f1/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

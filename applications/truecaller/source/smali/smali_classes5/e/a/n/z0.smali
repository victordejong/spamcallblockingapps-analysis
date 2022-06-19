.class public abstract Le/a/n/z0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/n/v;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/n/v<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Le/a/b0/o/a;)V
    .locals 1

    const-string v0, "coreSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/n/z0;->a:Le/a/b0/o/a;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/z0;->a:Le/a/b0/o/a;

    invoke-interface {p0}, Le/a/n/v;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/b0/o/a;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/truecaller/backup/AfterRestoreBehaviorFlag;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

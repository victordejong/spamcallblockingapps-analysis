.class public abstract Le/a/n/v1;
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-interface {p0}, Le/a/n/v;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Le/a/j4/b/a/h;->b(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/truecaller/backup/AfterRestoreBehaviorFlag;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

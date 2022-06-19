.class public final Le/a/n/d$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/n/d;-><init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/p5/g;

.field public final synthetic c:Le/a/p5/a0;


# direct methods
.method public constructor <init>(Le/a/p5/g;Le/a/p5/a0;)V
    .locals 0

    iput-object p1, p0, Le/a/n/d$b;->b:Le/a/p5/g;

    iput-object p2, p0, Le/a/n/d$b;->c:Le/a/p5/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/n/d$b;->b:Le/a/p5/g;

    invoke-interface {v0}, Le/a/p5/g;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/n/d$b;->c:Le/a/p5/a0;

    const-string v1, "android.permission.SEND_SMS"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

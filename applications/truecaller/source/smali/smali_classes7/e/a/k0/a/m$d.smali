.class public final Le/a/k0/a/m$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/a/m;-><init>(Le/a/b0/a/b/b;Le/a/p5/g;Le/a/u3/g;Landroid/content/Context;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ln3/b/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k0/a/m;


# direct methods
.method public constructor <init>(Le/a/k0/a/m;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/a/m$d;->b:Le/a/k0/a/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ln3/b/e/c;

    .line 2
    iget-object v1, p0, Le/a/k0/a/m$d;->b:Le/a/k0/a/m;

    .line 3
    iget-object v2, v1, Le/a/k0/a/m;->f:Landroid/content/Context;

    .line 4
    iget-object v3, v1, Le/a/k0/a/m;->d:Le/a/p5/g;

    .line 5
    iget-object v1, v1, Le/a/k0/a/m;->e:Le/a/u3/g;

    .line 6
    invoke-static {v3, v1}, Le/a/e/a2;->K(Le/a/p5/g;Le/a/u3/g;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    sget v1, Lcom/truecaller/callrecording/R$style;->Theme_Notification_Call_Dark:I

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/truecaller/callrecording/R$style;->Theme_Notification_Call_Default:I

    .line 9
    :goto_0
    invoke-direct {v0, v2, v1}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

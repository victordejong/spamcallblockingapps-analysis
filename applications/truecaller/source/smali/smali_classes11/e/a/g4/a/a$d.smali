.class public final Le/a/g4/a/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g4/a/a;-><init>(Ls1/w/f;Ls1/w/f;Landroid/content/Context;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;)V
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
.field public final synthetic b:Le/a/g4/a/a;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Le/a/g4/a/a;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/g4/a/a$d;->b:Le/a/g4/a/a;

    iput-object p2, p0, Le/a/g4/a/a$d;->c:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/g4/a/a$d;->b:Le/a/g4/a/a;

    invoke-virtual {v0}, Le/a/g4/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget v0, Lcom/truecaller/notification/call/R$style;->Theme_Notification_Call_Dark:I

    goto :goto_0

    .line 3
    :cond_0
    sget v0, Lcom/truecaller/notification/call/R$style;->Theme_Notification_Call_Default:I

    .line 4
    :goto_0
    new-instance v1, Ln3/b/e/c;

    iget-object v2, p0, Le/a/g4/a/a$d;->c:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Ln3/b/e/c;-><init>(Landroid/content/Context;I)V

    return-object v1
.end method

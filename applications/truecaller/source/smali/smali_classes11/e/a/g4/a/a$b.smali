.class public final Le/a/g4/a/a$b;
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
        "Ln3/k/a/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/g4/a/a;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/g4/a/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/g4/a/a$b;->b:Le/a/g4/a/a;

    iput-object p2, p0, Le/a/g4/a/a$b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Ln3/k/a/q;

    iget-object v1, p0, Le/a/g4/a/a$b;->b:Le/a/g4/a/a;

    .line 2
    invoke-virtual {v1}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object v1

    .line 3
    iget-object v2, p0, Le/a/g4/a/a$b;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    sget v1, Lcom/truecaller/notification/call/R$drawable;->notification_call_ic_button_answer:I

    .line 5
    iget-object v2, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v1, v2, Landroid/app/Notification;->icon:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ln3/k/a/q;->p(IZ)V

    const/16 v1, 0x8

    .line 7
    invoke-virtual {v0, v1, v2}, Ln3/k/a/q;->p(IZ)V

    .line 8
    iget-object v1, p0, Le/a/g4/a/a$b;->b:Le/a/g4/a/a;

    .line 9
    invoke-virtual {v1}, Le/a/g4/a/a;->d()Landroid/content/Context;

    move-result-object v1

    .line 10
    sget v2, Lcom/truecaller/notification/call/R$color;->notification_call_background:I

    .line 11
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 13
    iput v1, v0, Ln3/k/a/q;->D:I

    .line 14
    iget-object v1, p0, Le/a/g4/a/a$b;->b:Le/a/g4/a/a;

    invoke-virtual {v1}, Le/a/g4/a/a;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ln3/k/a/q;->k(Z)Ln3/k/a/q;

    const-string v1, "call"

    .line 15
    iput-object v1, v0, Ln3/k/a/q;->B:Ljava/lang/String;

    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Ln3/k/a/q;->m:Z

    const-string v1, "NotificationCompat.Build\u2026      .setShowWhen(false)"

    .line 17
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

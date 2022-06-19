.class final Lcom/hiya/client/callerid/ui/incallui/c$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/incallui/c;->q(Landroid/widget/RemoteViews;Lcom/hiya/client/callerid/ui/incallui/c$a;ILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/g<",
        "Lg/g/b/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/incallui/c;

.field final synthetic g:Landroid/widget/RemoteViews;

.field final synthetic h:I

.field final synthetic i:Landroid/app/Notification;

.field final synthetic j:Lcom/hiya/client/callerid/ui/incallui/c$a;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/incallui/c;Landroid/widget/RemoteViews;ILandroid/app/Notification;Lcom/hiya/client/callerid/ui/incallui/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->f:Lcom/hiya/client/callerid/ui/incallui/c;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->g:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->h:I

    iput-object p4, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->i:Landroid/app/Notification;

    iput-object p5, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->j:Lcom/hiya/client/callerid/ui/incallui/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/c/a;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->f:Lcom/hiya/client/callerid/ui/incallui/c;

    invoke-static {v0}, Lcom/hiya/client/callerid/ui/incallui/c;->a(Lcom/hiya/client/callerid/ui/incallui/c;)Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/a;->c()Ljava/lang/String;

    move-result-object v2

    .line 3
    iget-object v3, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->g:Landroid/widget/RemoteViews;

    .line 4
    sget v4, Lcom/hiya/client/callerid/ui/p;->e:I

    .line 5
    iget v5, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->h:I

    .line 6
    iget-object v6, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->i:Landroid/app/Notification;

    .line 7
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/incallui/c$f;->j:Lcom/hiya/client/callerid/ui/incallui/c$a;

    invoke-virtual {p1}, Lcom/hiya/client/callerid/ui/incallui/c$a;->c()I

    move-result v7

    .line 8
    invoke-static/range {v1 .. v7}, Lcom/hiya/client/callerid/ui/e0/k;->g(Landroid/content/Context;Ljava/lang/String;Landroid/widget/RemoteViews;IILandroid/app/Notification;I)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/c/a;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/incallui/c$f;->a(Lg/g/b/c/a;)V

    return-void
.end method

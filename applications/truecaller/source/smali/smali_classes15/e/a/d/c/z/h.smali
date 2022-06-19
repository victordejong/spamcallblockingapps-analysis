.class public final Le/a/d/c/z/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/d/c/z/i;

.field public final synthetic b:Le/a/d/b0/b$b;

.field public final synthetic c:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;


# direct methods
.method public constructor <init>(Le/a/d/c/z/i;Le/a/d/b0/b$b;Landroid/net/Uri;Le/a/d/c0/y1/d;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c/z/h;->a:Le/a/d/c/z/i;

    iput-object p2, p0, Le/a/d/c/z/h;->b:Le/a/d/b0/b$b;

    iput-object p5, p0, Le/a/d/c/z/h;->c:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/d/c/z/h;->a:Le/a/d/c/z/i;

    .line 2
    iget-object p1, p1, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Le/a/d/c/z/h;->b:Le/a/d/b0/b$b;

    iget-object v1, p0, Le/a/d/c/z/h;->c:Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;

    invoke-interface {p1, v0, v1}, Le/a/d/c/z/d;->u9(Le/a/d/b0/b$b;Lcom/truecaller/voip/ui/calldetails/VoipHistoryDetailsMVP$CallingAction;)V

    :cond_0
    return-void
.end method

.class public Le/a/f/a/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/d/b;


# instance fields
.field public final synthetic a:Le/a/f/a/i;


# direct methods
.method public constructor <init>(Le/a/f/a/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/f/a/h;->a:Le/a/f/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/f/a/h;->a:Le/a/f/a/i;

    .line 2
    iget-boolean v0, p1, Le/a/f/a/i;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p1, Le/a/f/a/i;->c:Z

    .line 4
    invoke-virtual {p1}, Le/a/f/a/i;->Yt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/a/k;

    check-cast p1, Lcom/truecaller/incallui/callui/InCallUIActivity;

    invoke-interface {v0, p1}, Le/a/f/a/k;->B(Lcom/truecaller/incallui/callui/InCallUIActivity;)V

    :cond_0
    return-void
.end method

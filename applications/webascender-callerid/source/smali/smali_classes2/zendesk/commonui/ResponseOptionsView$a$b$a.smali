.class Lzendesk/commonui/ResponseOptionsView$a$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/commonui/ResponseOptionsView$a$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lzendesk/commonui/ResponseOptionsView$a$b;


# direct methods
.method constructor <init>(Lzendesk/commonui/ResponseOptionsView$a$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/commonui/ResponseOptionsView$a$b$a;->f:Lzendesk/commonui/ResponseOptionsView$a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzendesk/commonui/ResponseOptionsView$a$b$a;->f:Lzendesk/commonui/ResponseOptionsView$a$b;

    iget-object v0, v0, Lzendesk/commonui/ResponseOptionsView$a$b;->h:Lzendesk/commonui/ResponseOptionsView$a;

    invoke-static {v0}, Lzendesk/commonui/ResponseOptionsView$a;->h(Lzendesk/commonui/ResponseOptionsView$a;)Lzendesk/commonui/n;

    move-result-object v0

    iget-object v1, p0, Lzendesk/commonui/ResponseOptionsView$a$b$a;->f:Lzendesk/commonui/ResponseOptionsView$a$b;

    iget-object v1, v1, Lzendesk/commonui/ResponseOptionsView$a$b;->f:Lzendesk/commonui/m;

    invoke-interface {v0, v1}, Lzendesk/commonui/n;->a(Lzendesk/commonui/m;)V

    return-void
.end method

.class Lzendesk/belvedere/g$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/SelectableView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/g$e;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzendesk/belvedere/g$e;


# direct methods
.method constructor <init>(Lzendesk/belvedere/g$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/g$e$b;->a:Lzendesk/belvedere/g$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/g$e$b;->a:Lzendesk/belvedere/g$e;

    invoke-static {p1}, Lzendesk/belvedere/g$e;->h(Lzendesk/belvedere/g$e;)Lzendesk/belvedere/f$b;

    move-result-object p1

    iget-object v0, p0, Lzendesk/belvedere/g$e$b;->a:Lzendesk/belvedere/g$e;

    invoke-interface {p1, v0}, Lzendesk/belvedere/f$b;->a(Lzendesk/belvedere/g$b;)Z

    move-result p1

    return p1
.end method

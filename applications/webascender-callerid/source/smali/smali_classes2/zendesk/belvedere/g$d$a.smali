.class Lzendesk/belvedere/g$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/SelectableView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/g$d;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzendesk/belvedere/g$d;


# direct methods
.method constructor <init>(Lzendesk/belvedere/g$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/g$d$a;->a:Lzendesk/belvedere/g$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/g$d$a;->a:Lzendesk/belvedere/g$d;

    invoke-static {p1}, Lzendesk/belvedere/g$d;->g(Lzendesk/belvedere/g$d;)Lzendesk/belvedere/f$b;

    move-result-object p1

    iget-object v0, p0, Lzendesk/belvedere/g$d$a;->a:Lzendesk/belvedere/g$d;

    invoke-interface {p1, v0}, Lzendesk/belvedere/f$b;->a(Lzendesk/belvedere/g$b;)Z

    move-result p1

    return p1
.end method

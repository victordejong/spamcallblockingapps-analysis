.class Lzendesk/belvedere/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/belvedere/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final f:Landroid/app/Activity;

.field final synthetic g:Lzendesk/belvedere/o;


# direct methods
.method private constructor <init>(Lzendesk/belvedere/o;Landroid/app/Activity;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lzendesk/belvedere/o$b;->f:Landroid/app/Activity;

    return-void
.end method

.method synthetic constructor <init>(Lzendesk/belvedere/o;Landroid/app/Activity;Lzendesk/belvedere/o$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lzendesk/belvedere/o$b;-><init>(Lzendesk/belvedere/o;Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    iget-object v1, p0, Lzendesk/belvedere/o$b;->f:Landroid/app/Activity;

    invoke-static {v0, v1}, Lzendesk/belvedere/o;->a(Lzendesk/belvedere/o;Landroid/app/Activity;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    if-lez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lzendesk/belvedere/o;->b(Lzendesk/belvedere/o;Z)Z

    if-lez v0, :cond_1

    .line 3
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v1}, Lzendesk/belvedere/o;->c(Lzendesk/belvedere/o;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 4
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v1, v0}, Lzendesk/belvedere/o;->d(Lzendesk/belvedere/o;I)I

    .line 5
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v1}, Lzendesk/belvedere/o;->e(Lzendesk/belvedere/o;)Lzendesk/belvedere/o$d;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v1}, Lzendesk/belvedere/o;->e(Lzendesk/belvedere/o;)Lzendesk/belvedere/o$d;

    move-result-object v1

    invoke-interface {v1, v0}, Lzendesk/belvedere/o$d;->a(I)V

    .line 7
    :cond_1
    iget-object v1, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v1}, Lzendesk/belvedere/o;->f(Lzendesk/belvedere/o;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v0}, Lzendesk/belvedere/o;->g(Lzendesk/belvedere/o;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v0, p0, Lzendesk/belvedere/o$b;->g:Lzendesk/belvedere/o;

    invoke-static {v0}, Lzendesk/belvedere/o;->h(Lzendesk/belvedere/o;)V

    :goto_1
    return-void
.end method

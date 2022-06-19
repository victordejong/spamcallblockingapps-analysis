.class Lzendesk/belvedere/b$b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/b$b$a;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/util/List;

.field final synthetic g:Landroid/app/Activity;

.field final synthetic h:Landroid/view/ViewGroup;

.field final synthetic i:Lzendesk/belvedere/b$b$a;


# direct methods
.method constructor <init>(Lzendesk/belvedere/b$b$a;Ljava/util/List;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iput-object p2, p0, Lzendesk/belvedere/b$b$a$a;->f:Ljava/util/List;

    iput-object p3, p0, Lzendesk/belvedere/b$b$a$a;->g:Landroid/app/Activity;

    iput-object p4, p0, Lzendesk/belvedere/b$b$a$a;->h:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    new-instance v9, Lzendesk/belvedere/b$c;

    iget-object v1, p0, Lzendesk/belvedere/b$b$a$a;->f:Ljava/util/List;

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->a(Lzendesk/belvedere/b$b;)Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->b(Lzendesk/belvedere/b$b;)Ljava/util/List;

    move-result-object v3

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->c(Lzendesk/belvedere/b$b;)Z

    move-result v4

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->d(Lzendesk/belvedere/b$b;)Ljava/util/List;

    move-result-object v5

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->e(Lzendesk/belvedere/b$b;)J

    move-result-wide v6

    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v0, v0, Lzendesk/belvedere/b$b$a;->b:Lzendesk/belvedere/b$b;

    invoke-static {v0}, Lzendesk/belvedere/b$b;->f(Lzendesk/belvedere/b$b;)Z

    move-result v8

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lzendesk/belvedere/b$c;-><init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/util/List;JZ)V

    .line 2
    iget-object v0, p0, Lzendesk/belvedere/b$b$a$a;->g:Landroid/app/Activity;

    iget-object v1, p0, Lzendesk/belvedere/b$b$a$a;->h:Landroid/view/ViewGroup;

    iget-object v2, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v2, v2, Lzendesk/belvedere/b$b$a;->a:Lzendesk/belvedere/e;

    invoke-static {v0, v1, v2, v9}, Lzendesk/belvedere/m;->t(Landroid/app/Activity;Landroid/view/ViewGroup;Lzendesk/belvedere/e;Lzendesk/belvedere/b$c;)Lzendesk/belvedere/m;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lzendesk/belvedere/b$b$a$a;->i:Lzendesk/belvedere/b$b$a;

    iget-object v1, v1, Lzendesk/belvedere/b$b$a;->a:Lzendesk/belvedere/e;

    invoke-virtual {v1, v0, v9}, Lzendesk/belvedere/e;->l1(Lzendesk/belvedere/m;Lzendesk/belvedere/b$c;)V

    return-void
.end method

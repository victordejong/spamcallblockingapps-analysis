.class Lzendesk/belvedere/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzendesk/belvedere/t$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzendesk/belvedere/t;->j(Landroidx/fragment/app/Fragment;Ljava/util/List;Lzendesk/belvedere/t$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lzendesk/belvedere/t$d;

.field final synthetic d:Lzendesk/belvedere/t;


# direct methods
.method constructor <init>(Lzendesk/belvedere/t;Landroid/content/Context;Ljava/util/List;Lzendesk/belvedere/t$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzendesk/belvedere/t$a;->d:Lzendesk/belvedere/t;

    iput-object p2, p0, Lzendesk/belvedere/t$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lzendesk/belvedere/t$a;->b:Ljava/util/List;

    iput-object p4, p0, Lzendesk/belvedere/t$a;->c:Lzendesk/belvedere/t$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lzendesk/belvedere/t$a;->d:Lzendesk/belvedere/t;

    iget-object p2, p0, Lzendesk/belvedere/t$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lzendesk/belvedere/t$a;->b:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lzendesk/belvedere/t;->a(Lzendesk/belvedere/t;Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 2
    iget-object p2, p0, Lzendesk/belvedere/t$a;->d:Lzendesk/belvedere/t;

    iget-object v0, p0, Lzendesk/belvedere/t$a;->a:Landroid/content/Context;

    invoke-static {p2, v0}, Lzendesk/belvedere/t;->b(Lzendesk/belvedere/t;Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    iget-object p2, p0, Lzendesk/belvedere/t$a;->c:Lzendesk/belvedere/t$d;

    invoke-interface {p2, p1}, Lzendesk/belvedere/t$d;->a(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lzendesk/belvedere/t$a;->c:Lzendesk/belvedere/t$d;

    invoke-interface {p1}, Lzendesk/belvedere/t$d;->b()V

    :goto_0
    return-void
.end method

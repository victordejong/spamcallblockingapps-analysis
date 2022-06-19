.class Lf/v/o$a$a;
.super Lf/v/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/v/o$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/e/a;

.field final synthetic b:Lf/v/o$a;


# direct methods
.method constructor <init>(Lf/v/o$a;Lf/e/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/v/o$a$a;->b:Lf/v/o$a;

    iput-object p2, p0, Lf/v/o$a$a;->a:Lf/e/a;

    invoke-direct {p0}, Lf/v/n;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lf/v/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lf/v/o$a$a;->a:Lf/e/a;

    iget-object v1, p0, Lf/v/o$a$a;->b:Lf/v/o$a;

    iget-object v1, v1, Lf/v/o$a;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lf/e/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Lf/v/m;->T(Lf/v/m$f;)Lf/v/m;

    return-void
.end method

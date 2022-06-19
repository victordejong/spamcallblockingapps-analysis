.class public Ln3/g0/q$a$a;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/q$a;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/g/a;

.field public final synthetic b:Ln3/g0/q$a;


# direct methods
.method public constructor <init>(Ln3/g0/q$a;Ln3/g/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/q$a$a;->b:Ln3/g0/q$a;

    iput-object p2, p0, Ln3/g0/q$a$a;->a:Ln3/g/a;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/g0/q$a$a;->a:Ln3/g/a;

    iget-object v1, p0, Ln3/g0/q$a$a;->b:Ln3/g0/q$a;

    iget-object v1, v1, Ln3/g0/q$a;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ln3/g/h;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method

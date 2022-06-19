.class public Ln3/g0/g$c;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/g0/g;->r(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/util/ArrayList;

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ln3/g0/g;


# direct methods
.method public constructor <init>(Ln3/g0/g;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/g0/g$c;->g:Ln3/g0/g;

    iput-object p2, p0, Ln3/g0/g$c;->a:Ljava/lang/Object;

    iput-object p3, p0, Ln3/g0/g$c;->b:Ljava/util/ArrayList;

    iput-object p4, p0, Ln3/g0/g$c;->c:Ljava/lang/Object;

    iput-object p5, p0, Ln3/g0/g$c;->d:Ljava/util/ArrayList;

    iput-object p6, p0, Ln3/g0/g$c;->e:Ljava/lang/Object;

    iput-object p7, p0, Ln3/g0/g$c;->f:Ljava/util/ArrayList;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ln3/g0/m;)V
    .locals 3

    .line 1
    iget-object p1, p0, Ln3/g0/g$c;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Ln3/g0/g$c;->g:Ln3/g0/g;

    iget-object v2, p0, Ln3/g0/g$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Ln3/g0/g;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 3
    :cond_0
    iget-object p1, p0, Ln3/g0/g$c;->c:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Ln3/g0/g$c;->g:Ln3/g0/g;

    iget-object v2, p0, Ln3/g0/g$c;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Ln3/g0/g;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 5
    :cond_1
    iget-object p1, p0, Ln3/g0/g$c;->e:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 6
    iget-object v1, p0, Ln3/g0/g$c;->g:Ln3/g0/g;

    iget-object v2, p0, Ln3/g0/g$c;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Ln3/g0/g;->p(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public d(Ln3/g0/m;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Ln3/g0/m;->y(Ln3/g0/m$d;)Ln3/g0/m;

    return-void
.end method

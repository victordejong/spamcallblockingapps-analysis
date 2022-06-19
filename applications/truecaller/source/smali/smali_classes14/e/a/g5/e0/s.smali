.class public final Le/a/g5/e0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Le/a/b0/p/c;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/tagger/tagPicker/TaggerViewModel;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Le/a/g5/e0/s;->a:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    iput-object p2, p0, Le/a/g5/e0/s;->b:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/g5/e0/s;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/g5/e0/s;->a:Lcom/truecaller/tagger/tagPicker/TaggerViewModel;

    .line 3
    iget-object v0, v0, Lcom/truecaller/tagger/tagPicker/TaggerViewModel;->d:Ln3/v/i0;

    .line 4
    new-instance v1, Ls1/o;

    iget-object v2, p0, Le/a/g5/e0/s;->b:Ljava/lang/String;

    iget-boolean v3, p0, Le/a/g5/e0/s;->c:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, v2, p1, v3}, Ls1/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ln3/v/k0;->l(Ljava/lang/Object;)V

    return-void
.end method

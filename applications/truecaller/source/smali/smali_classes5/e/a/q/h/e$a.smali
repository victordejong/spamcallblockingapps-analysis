.class public final Le/a/q/h/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/v/l0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/h/e;->d(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/contactfeedback/repo/SortType;Ls1/z/b/l;)Le/a/q/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/v/l0<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Le/a/q/h/e$a;->a:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    iget-object v0, p0, Le/a/q/h/e$a;->a:Ls1/z/b/l;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

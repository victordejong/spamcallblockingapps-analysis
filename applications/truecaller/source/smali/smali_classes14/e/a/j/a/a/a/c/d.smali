.class public final Le/a/j/a/a/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/j/a/a/a/c/a$e$b;

.field public final synthetic b:Le/a/j/a/a/a/c/f;


# direct methods
.method public constructor <init>(Le/a/j/a/a/a/c/a$e$b;Le/a/j/a/a/a/c/f;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/a/a/c/d;->a:Le/a/j/a/a/a/c/a$e$b;

    iput-object p2, p0, Le/a/j/a/a/a/c/d;->b:Le/a/j/a/a/a/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/j/a/a/a/c/d;->a:Le/a/j/a/a/a/c/a$e$b;

    iget-object p1, p1, Le/a/j/a/a/a/c/a$e$b;->b:Le/a/j/a/a/a/c/a$e;

    .line 2
    iget-object p1, p1, Le/a/j/a/a/a/c/a$e;->b:Ls1/z/b/l;

    .line 3
    iget-object v0, p0, Le/a/j/a/a/a/c/d;->b:Le/a/j/a/a/a/c/f;

    .line 4
    iget-object v0, v0, Le/a/j/a/a/a/c/f;->a:Lcom/truecaller/surveys/data/entities/Choice;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/surveys/data/entities/Choice;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

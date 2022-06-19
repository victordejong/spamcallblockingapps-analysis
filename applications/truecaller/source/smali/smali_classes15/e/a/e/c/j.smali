.class public final synthetic Le/a/e/c/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/details/DetailsActionBar;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/details/DetailsActionBar;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/j;->a:Lcom/truecaller/ui/details/DetailsActionBar;

    iput-object p2, p0, Le/a/e/c/j;->b:Ljava/util/List;

    iput-boolean p3, p0, Le/a/e/c/j;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/e/c/j;->a:Lcom/truecaller/ui/details/DetailsActionBar;

    iget-object v1, p0, Le/a/e/c/j;->b:Ljava/util/List;

    iget-boolean v2, p0, Le/a/e/c/j;->c:Z

    .line 1
    invoke-virtual {v0, v1, v2}, Lcom/truecaller/ui/details/DetailsActionBar;->e(Ljava/util/List;Z)V

    return-void
.end method

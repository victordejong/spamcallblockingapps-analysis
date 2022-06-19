.class public final synthetic Le/a/e/c/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Lcom/truecaller/data/entity/Number;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Number;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/e0;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/e0;->b:Lcom/truecaller/data/entity/Number;

    iput p3, p0, Le/a/e/c/e0;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/e0;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/e0;->b:Lcom/truecaller/data/entity/Number;

    iget v1, p0, Le/a/e/c/e0;->c:I

    .line 1
    invoke-virtual {p1, v0, v1}, Le/a/e/c/s1;->fB(Lcom/truecaller/data/entity/Number;I)V

    return-void
.end method

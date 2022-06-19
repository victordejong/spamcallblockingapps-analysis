.class public final synthetic Le/a/e/c/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Lcom/truecaller/data/entity/Number;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Number;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/x;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/x;->b:Lcom/truecaller/data/entity/Number;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c/x;->a:Le/a/e/c/s1;

    iget-object v0, p0, Le/a/e/c/x;->b:Lcom/truecaller/data/entity/Number;

    const/4 v1, -0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Le/a/e/c/s1;->fB(Lcom/truecaller/data/entity/Number;I)V

    return-void
.end method

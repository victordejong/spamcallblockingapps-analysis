.class public final Le/a/a/c/l7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Le/a/a/c/g1;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/SimpleAdapter;Le/a/a/c/g1;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/l7;->a:Landroid/view/View;

    iput-object p3, p0, Le/a/a/c/l7;->b:Le/a/a/c/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    sget-object p1, Lcom/truecaller/messaging/conversation/CallType;->VOIP:Lcom/truecaller/messaging/conversation/CallType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcom/truecaller/messaging/conversation/CallType;->PHONE:Lcom/truecaller/messaging/conversation/CallType;

    .line 3
    :goto_0
    iget-object p2, p0, Le/a/a/c/l7;->b:Le/a/a/c/g1;

    .line 4
    iget-object p2, p2, Le/a/a/c/g1;->a:Le/a/a/c/y3;

    .line 5
    iget-object p2, p2, Le/a/a/c/y3;->a:Le/a/a/c/c5;

    invoke-virtual {p2, p1}, Le/a/a/c/c5;->Jj(Lcom/truecaller/messaging/conversation/CallType;)V

    return-void
.end method

.class public final Le/a/h/f/f0;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/truecaller/calling/contacts_list/FastScroller;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/contacts_list/FastScroller;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/h/f/f0;->a:Lcom/truecaller/calling/contacts_list/FastScroller;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    const-string p2, "recyclerView"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/h/f/f0;->a:Lcom/truecaller/calling/contacts_list/FastScroller;

    .line 2
    sget p2, Lcom/truecaller/calling/contacts_list/FastScroller;->j:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/calling/contacts_list/FastScroller;->b()V

    return-void
.end method

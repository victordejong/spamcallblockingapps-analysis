.class public Le/a/e/o0$c;
.super Le/a/e/o0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final b:Le/a/e/x0;


# direct methods
.method public constructor <init>(Le/a/e/x0;Le/a/h0/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Le/a/e/o0;-><init>(Le/a/h0/j;)V

    .line 2
    iput-object p1, p0, Le/a/e/o0$c;->b:Le/a/e/x0;

    return-void
.end method


# virtual methods
.method public c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/e/o0$c;->b:Le/a/e/x0;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v0

    return-object v0
.end method

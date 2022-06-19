.class public final Le/a/h0/v/e$a$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h0/v/e$a;-><init>(Landroid/view/View;Le/a/h0/v/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/common/ui/listitem/ListItemX;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h0/v/e$a;


# direct methods
.method public constructor <init>(Le/a/h0/v/e$a;)V
    .locals 0

    iput-object p1, p0, Le/a/h0/v/e$a$b;->b:Le/a/h0/v/e$a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h0/v/e$a$b;->b:Le/a/h0/v/e$a;

    .line 2
    iget-object v0, v0, Le/a/h0/v/e$a;->c:Landroid/view/View;

    const-string v1, "null cannot be cast to non-null type com.truecaller.common.ui.listitem.ListItemX"

    .line 3
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    return-object v0
.end method

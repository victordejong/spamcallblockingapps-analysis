.class public final Le/a/a/n/j/k$j;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/n/j/k;->Dc(Lcom/truecaller/messaging/mediamanager/SortOption;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/messaging/mediamanager/SortOption;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/n/j/k;


# direct methods
.method public constructor <init>(Le/a/a/n/j/k;)V
    .locals 0

    iput-object p1, p0, Le/a/a/n/j/k$j;->b:Le/a/a/n/j/k;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/truecaller/messaging/mediamanager/SortOption;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/a/n/j/k$j;->b:Le/a/a/n/j/k;

    invoke-virtual {v0}, Le/a/a/n/j/k;->PA()Le/a/a/n/j/s;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/a/n/j/s;->Ze(Lcom/truecaller/messaging/mediamanager/SortOption;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

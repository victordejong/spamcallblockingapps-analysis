.class public final Le/a/c/w/t$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/w/t$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/util/Comparator;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/w/t$a;


# direct methods
.method public constructor <init>(Le/a/c/w/t$a;)V
    .locals 0

    iput-object p1, p0, Le/a/c/w/t$a$b;->a:Le/a/c/w/t$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    .line 2
    iget-object v0, p0, Le/a/c/w/t$a$b;->a:Le/a/c/w/t$a;

    iget-object v0, v0, Le/a/c/w/t$a;->d:Ljava/util/Set;

    invoke-virtual {p2}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    check-cast p1, Lcom/truecaller/insights/insightsui/SenderFilterEntity;

    iget-object v0, p0, Le/a/c/w/t$a$b;->a:Le/a/c/w/t$a;

    iget-object v0, v0, Le/a/c/w/t$a;->d:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/truecaller/insights/insightsui/SenderFilterEntity;->getSenderId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2, p1}, Le/q/f/a/d/a;->K(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p1

    return p1
.end method

.class public final Le/a/c/r/j/k$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/r/j/k;-><init>(Le/a/c/h/m/c;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Le/a/c/r/j/p;Ljava/lang/String;Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/w/f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/c/r/j/k;


# direct methods
.method public constructor <init>(Le/a/c/r/j/k;)V
    .locals 0

    iput-object p1, p0, Le/a/c/r/j/k$b;->b:Le/a/c/r/j/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/c/r/j/k$b;->b:Le/a/c/r/j/k;

    .line 2
    iget-object v0, v0, Le/a/c/r/j/k;->b:Ls1/w/f;

    return-object v0
.end method

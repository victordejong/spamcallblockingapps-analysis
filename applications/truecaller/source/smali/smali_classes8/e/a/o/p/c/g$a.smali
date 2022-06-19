.class public final Le/a/o/p/c/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/p/c/g;-><init>(Lcom/truecaller/contextcall/db/ContextCallDatabase;Ls1/w/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/o/p/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/o/p/c/g;


# direct methods
.method public constructor <init>(Le/a/o/p/c/g;)V
    .locals 0

    iput-object p1, p0, Le/a/o/p/c/g$a;->b:Le/a/o/p/c/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/o/p/c/g$a;->b:Le/a/o/p/c/g;

    .line 2
    iget-object v0, v0, Le/a/o/p/c/g;->b:Lcom/truecaller/contextcall/db/ContextCallDatabase;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/contextcall/db/ContextCallDatabase;->d()Le/a/o/p/c/a;

    move-result-object v0

    return-object v0
.end method

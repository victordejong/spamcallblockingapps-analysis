.class public final Le/a/d/c0/z0$e$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z0$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/t/a;",
        "Lcom/truecaller/voip/db/VoipIdCache;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/z0$e;


# direct methods
.method public constructor <init>(Le/a/d/c0/z0$e;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z0$e$a;->b:Le/a/d/c0/z0$e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Le/a/d/t/a;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d/c0/z0$e$a;->b:Le/a/d/c0/z0$e;

    iget-object v0, v0, Le/a/d/c0/z0$e;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Le/a/d/t/a;->b(Ljava/lang/String;)Lcom/truecaller/voip/db/VoipIdCache;

    move-result-object p1

    return-object p1
.end method

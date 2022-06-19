.class public final Le/a/d/c0/a1;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Le/a/d/t/a;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/db/VoipIdCache;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/db/VoipIdCache;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/a1;->b:Lcom/truecaller/voip/db/VoipIdCache;

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
    iget-object v0, p0, Le/a/d/c0/a1;->b:Lcom/truecaller/voip/db/VoipIdCache;

    invoke-interface {p1, v0}, Le/a/d/t/a;->i(Lcom/truecaller/voip/db/VoipIdCache;)V

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

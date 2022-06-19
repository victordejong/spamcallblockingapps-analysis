.class public final Le/a/d/c0/z1/k$n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/z1/k;->y(Ljava/lang/String;Lcom/truecaller/voip/api/CallInfoDto;Lcom/truecaller/voip/api/AgoraInfoDto;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/z1/k;


# direct methods
.method public constructor <init>(Le/a/d/c0/z1/k;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/z1/k$n;->b:Le/a/d/c0/z1/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/c0/z1/k$n;->b:Le/a/d/c0/z1/k;

    .line 2
    iget-object v0, v0, Le/a/d/c0/z1/k;->h:Le/a/d/c0/z1/a;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Le/a/d/c0/z1/a;->e:Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, "agoraInfo"

    .line 4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

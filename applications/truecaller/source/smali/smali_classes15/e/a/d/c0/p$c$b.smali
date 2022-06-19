.class public final Le/a/d/c0/p$c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/p$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/media/ToneGenerator;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/d/c0/p$c;


# direct methods
.method public constructor <init>(Le/a/d/c0/p$c;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/p$c$b;->b:Le/a/d/c0/p$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/media/ToneGenerator;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/d/c0/p$c$b;->b:Le/a/d/c0/p$c;

    iget-object v0, v0, Le/a/d/c0/p$c;->h:Lcom/truecaller/voip/util/VoipTone;

    invoke-virtual {v0}, Lcom/truecaller/voip/util/VoipTone;->getToneGeneratorType()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.class public final Le/a/h/g/a$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/g/a;-><init>(Landroid/view/View;Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Le/a/k0/n/e/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/h/g/a;


# direct methods
.method public constructor <init>(Le/a/h/g/a;)V
    .locals 0

    iput-object p1, p0, Le/a/h/g/a$d;->b:Le/a/h/g/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/g/a$d;->b:Le/a/h/g/a;

    .line 2
    iget-object v0, v0, Le/a/h/g/a;->g:Landroid/view/View;

    const v1, 0x7f0a0355

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.callrecording.ui.player.CallRecordingPlayerView"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/callrecording/ui/player/CallRecordingPlayerView;

    return-object v0
.end method

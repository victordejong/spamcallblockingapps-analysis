.class public final Le/a/g/a/b/a$m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a$m;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/b/a$m;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a$m;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$m$b;->a:Le/a/g/a/b/a$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/a$m$b;->a:Le/a/g/a/b/a$m;

    iget-object v0, v0, Le/a/g/a/b/a$m;->b:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/b/l;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v1, Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;->NONE:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    iput-object v1, v0, Le/a/g/a/b/l;->F0:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 4
    invoke-virtual {v0}, Le/a/g/a/m;->Oj()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v1

    .line 5
    iget-object v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;->FULL_SCREEN_BACKGROUND:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    iput-object v1, v0, Le/a/g/a/b/l;->F0:Lcom/truecaller/acs/ui/fullscreen/BackgroundMode;

    .line 7
    iget-object v1, v0, Le/a/g/a/b/l;->L0:Le/a/b0/q/v;

    invoke-virtual {v1}, Le/a/b0/q/v;->a()V

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/b/h;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Le/a/g/a/b/h;->J2(Z)V

    :cond_0
    return-void
.end method

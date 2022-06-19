.class public final Le/a/r1$s;
.super Le/a/h2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r1$s$a;
    }
.end annotation


# instance fields
.field public final d:Landroid/view/View;

.field public final e:Le/a/r1;

.field public final f:Le/a/r1$d;

.field public final g:Le/a/r1$b;

.field public final h:Le/a/r1$s;

.field public i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/f;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/d;",
            ">;"
        }
    .end annotation
.end field

.field public k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/z/h;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/k/a/k/z/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Landroid/view/View;Le/a/h1;)V
    .locals 11

    move-object v6, p0

    .line 1
    invoke-direct {p0}, Le/a/h2;-><init>()V

    .line 2
    iput-object v6, v6, Le/a/r1$s;->h:Le/a/r1$s;

    move-object v7, p1

    .line 3
    iput-object v7, v6, Le/a/r1$s;->e:Le/a/r1;

    move-object v8, p2

    .line 4
    iput-object v8, v6, Le/a/r1$s;->f:Le/a/r1$d;

    move-object v9, p3

    .line 5
    iput-object v9, v6, Le/a/r1$s;->g:Le/a/r1$b;

    move-object v0, p4

    .line 6
    iput-object v0, v6, Le/a/r1$s;->d:Landroid/view/View;

    .line 7
    new-instance v10, Le/a/r1$s$a;

    const/4 v5, 0x1

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Le/a/r1$s$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/r1$s;I)V

    iput-object v10, v6, Le/a/r1$s;->i:Ljavax/inject/Provider;

    .line 8
    invoke-static {v10}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Le/a/r1$s;->j:Ljavax/inject/Provider;

    .line 9
    new-instance v10, Le/a/r1$s$a;

    const/4 v5, 0x2

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Le/a/r1$s$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/r1$s;I)V

    iput-object v10, v6, Le/a/r1$s;->k:Ljavax/inject/Provider;

    .line 10
    new-instance v10, Le/a/r1$s$a;

    const/4 v5, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v5}, Le/a/r1$s$a;-><init>(Le/a/r1;Le/a/r1$d;Le/a/r1$b;Le/a/r1$s;I)V

    iput-object v10, v6, Le/a/r1$s;->l:Ljavax/inject/Provider;

    .line 11
    invoke-static {v10}, Lo3/c/b;->b(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, v6, Le/a/r1$s;->m:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/k/a/e/m/f;

    iget-object v1, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    sget v2, Le/a/r1;->Ni:I

    .line 3
    invoke-virtual {v1}, Le/a/r1;->Sb()Le/a/k/c/i0;

    move-result-object v1

    .line 4
    iget-object v2, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 5
    invoke-virtual {v2}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v2

    .line 6
    invoke-direct {v0, v1, v2}, Le/a/k/a/e/m/f;-><init>(Le/a/k/c/h0;Le/a/k/c/r0;)V

    .line 7
    iput-object v0, p1, Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;->v:Le/a/k/a/e/m/d;

    return-void
.end method

.method public b(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/d/y/b/h;

    iget-object v1, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    iget-object v2, v2, Le/a/r1;->A1:Ljavax/inject/Provider;

    .line 5
    invoke-static {v2}, Lo3/c/b;->a(Ljavax/inject/Provider;)Lo3/a;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Le/a/d/y/b/h;-><init>(Ls1/w/f;Lo3/a;)V

    .line 6
    iput-object v0, p1, Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;->y:Le/a/d/y/b/b;

    return-void
.end method

.method public c(Le/a/b/i/a;)V
    .locals 6

    .line 1
    new-instance v0, Le/a/b/i/k/b;

    iget-object v1, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    invoke-virtual {v2}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v2

    .line 5
    iget-object v3, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    invoke-virtual {v3}, Le/a/r1;->s9()Le/a/b/i/d;

    move-result-object v3

    .line 7
    iget-object v4, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 8
    new-instance v5, Le/a/b/i/h/b;

    iget-object v4, v4, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/q2/a;

    invoke-direct {v5, v4}, Le/a/b/i/h/b;-><init>(Le/a/q2/a;)V

    .line 9
    invoke-direct {v0, v1, v2, v3, v5}, Le/a/b/i/k/b;-><init>(Ls1/w/f;Le/a/p5/c0;Le/a/b/i/c;Le/a/b/i/h/b;)V

    .line 10
    iput-object v0, p1, Le/a/b/i/a;->c:Le/a/b/i/e;

    return-void
.end method

.method public d(Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;)V
    .locals 8

    .line 1
    new-instance v7, Le/a/d/c/a/p/a/h;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 5
    invoke-static {v0}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->b8:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/d/v/d;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 8
    iget-object v0, v0, Le/a/r1;->f8:Ljavax/inject/Provider;

    .line 9
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/d/w/d;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 10
    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v5

    .line 11
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 12
    iget-object v0, v0, Le/a/r1;->yg:Ljavax/inject/Provider;

    .line 13
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Le/a/s2/a;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Le/a/d/c/a/p/a/h;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;Le/a/p5/c0;Le/a/s2/a;)V

    .line 14
    iput-object v7, p1, Lcom/truecaller/voip/ui/util/view/tile/VoipContactTileGroupView;->v:Le/a/d/c/a/p/a/c;

    return-void
.end method

.method public e(Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;)V
    .locals 3

    .line 1
    new-instance v0, Le/a/x/i0/d;

    iget-object v1, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    iget-object v2, v2, Le/a/r1;->Cb:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/x/l;

    invoke-direct {v0, v1, v2}, Le/a/x/i0/d;-><init>(Ls1/w/f;Le/a/x/l;)V

    .line 6
    iput-object v0, p1, Lcom/truecaller/ghost_call/callergradient/GhostCallerGradientView;->f:Le/a/x/i0/a;

    return-void
.end method

.method public f(Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;)V
    .locals 10

    .line 1
    new-instance v9, Le/a/k/a/i/f;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v2

    .line 5
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    invoke-virtual {v0}, Le/a/r1;->tb()Le/a/k/c/e0;

    move-result-object v3

    .line 7
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->l8(Le/a/r1;)Le/a/k/a/f/g;

    move-result-object v4

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 8
    invoke-virtual {v0}, Le/a/r1;->Sb()Le/a/k/c/i0;

    move-result-object v5

    .line 9
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 10
    invoke-virtual {v0}, Le/a/r1;->Eb()Le/a/k/n/h/d;

    move-result-object v6

    .line 11
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 12
    new-instance v7, Le/a/k/p/c;

    iget-object v0, v0, Le/a/r1;->Fi:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/p/i;

    invoke-direct {v7, v0}, Le/a/k/p/c;-><init>(Le/a/k/p/i;)V

    .line 13
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 14
    invoke-virtual {v0}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v8

    move-object v0, v9

    .line 15
    invoke-direct/range {v0 .. v8}, Le/a/k/a/i/f;-><init>(Ls1/w/f;Le/a/k/c/r0;Le/a/k/c/d0;Le/a/k/a/f/g;Le/a/k/c/h0;Le/a/k/n/h/a;Le/a/k/p/b;Le/a/p5/c0;)V

    .line 16
    iput-object v9, p1, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->v:Le/a/k/a/i/b;

    .line 17
    new-instance v0, Le/a/k/c/h1;

    invoke-direct {v0}, Le/a/k/c/h1;-><init>()V

    .line 18
    iput-object v0, p1, Lcom/truecaller/videocallerid/ui/settings/VideoCallerIdSettingsView;->w:Le/a/k/c/e1;

    return-void
.end method

.method public g(Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;)V
    .locals 7

    .line 1
    new-instance v6, Le/a/f/a/t/c;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    iget-object v0, v0, Le/a/r1;->k2:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/f/y/c;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->h8(Le/a/r1;)Le/a/f/z/c;

    move-result-object v3

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->h2:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Le/a/f/w/c;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    invoke-static {v0}, Le/a/r1;->d8(Le/a/r1;)Le/a/k/c/d2;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Le/a/f/a/t/c;-><init>(Ls1/w/f;Le/a/f/y/c;Le/a/f/z/b;Le/a/f/w/c;Le/a/k/c/c2;)V

    .line 8
    iput-object v6, p1, Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;->f:Le/a/f/a/t/a;

    return-void
.end method

.method public h(Le/a/d/c/a/p/a/w;)V
    .locals 4

    .line 1
    new-instance v0, Le/a/d/c/a/p/a/u;

    iget-object v1, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v1, v1, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v1}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v2, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    iget-object v2, v2, Le/a/r1;->b8:Ljavax/inject/Provider;

    .line 5
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d/v/d;

    iget-object v3, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    invoke-virtual {v3}, Le/a/r1;->xc()Le/a/p5/i0;

    move-result-object v3

    .line 7
    invoke-direct {v0, v1, v2, v3}, Le/a/d/c/a/p/a/u;-><init>(Ls1/w/f;Le/a/d/v/d;Le/a/p5/c0;)V

    .line 8
    iput-object v0, p1, Le/a/d/c/a/p/a/w;->v:Le/a/d/c/a/p/a/o;

    return-void
.end method

.method public i(Lcom/truecaller/videocallerid/ui/videoplayer/FullScreenVideoPlayerView;)V
    .locals 10

    .line 1
    new-instance v9, Le/a/k/a/k/r;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 3
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v1

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 4
    invoke-virtual {v0}, Le/a/r1;->Ma()Le/a/k/n/f/f;

    move-result-object v2

    .line 5
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 6
    iget-object v0, v0, Le/a/r1;->y6:Ljavax/inject/Provider;

    .line 7
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Le/a/k/c/u0;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 8
    invoke-virtual {v0}, Le/a/r1;->A9()Le/a/k/f;

    move-result-object v4

    .line 9
    iget-object v0, p0, Le/a/r1$s;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Le/a/k/a/k/z/c;

    .line 10
    new-instance v6, Le/a/k/a/k/q;

    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 11
    sget v7, Le/a/r1;->Ni:I

    .line 12
    invoke-virtual {v0}, Le/a/r1;->Ma()Le/a/k/n/f/f;

    move-result-object v0

    .line 13
    iget-object v7, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 14
    invoke-virtual {v7}, Le/a/r1;->ub()Le/a/k/n/g/j;

    move-result-object v7

    .line 15
    iget-object v8, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 16
    invoke-virtual {v8}, Le/a/r1;->Mc()Le/a/k/c/a;

    move-result-object v8

    .line 17
    invoke-direct {v6, v0, v7, v8}, Le/a/k/a/k/q;-><init>(Le/a/k/n/f/d;Le/a/k/n/g/e;Le/a/k/c/s1;)V

    .line 18
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 19
    invoke-virtual {v0}, Le/a/r1;->Gc()Lcom/truecaller/videocallerid/utils/analytics/VideoCallerIdAnalyticsUtilImpl;

    move-result-object v7

    .line 20
    new-instance v8, Le/a/p5/d;

    invoke-direct {v8}, Le/a/p5/d;-><init>()V

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Le/a/k/a/k/r;-><init>(Ls1/w/f;Le/a/k/n/f/d;Le/a/k/c/u0;Le/a/k/d;Le/a/k/a/k/z/c;Le/a/k/a/k/p;Le/a/k/c/h2/d;Le/a/p5/c;)V

    .line 21
    iput-object v9, p1, Le/a/k/a/k/c;->a:Le/a/k/a/k/w;

    .line 22
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 23
    iget-object v0, v0, Le/a/r1;->r6:Ljavax/inject/Provider;

    .line 24
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/c/q;

    .line 25
    iput-object v0, p1, Le/a/k/a/k/c;->b:Le/a/k/c/q;

    .line 26
    iget-object v0, p0, Le/a/r1$s;->e:Le/a/r1;

    .line 27
    iget-object v0, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    .line 28
    invoke-static {v0}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v0

    .line 29
    iput-object v0, p1, Le/a/k/a/k/c;->c:Ls1/w/f;

    .line 30
    iget-object v0, p0, Le/a/r1$s;->m:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/k/a/k/z/c;

    .line 31
    iput-object v0, p1, Le/a/k/a/k/c;->d:Le/a/k/a/k/z/c;

    return-void
.end method

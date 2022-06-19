.class public final Le/a/b/b/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field public final synthetic a:Le/a/b/b/a/b;


# direct methods
.method public constructor <init>(Le/a/b/b/a/b;)V
    .locals 0

    iput-object p1, p0, Le/a/b/b/a/c;->a:Le/a/b/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final O3(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/b/b/a/c;->a:Le/a/b/b/a/b;

    .line 2
    iput-object p1, v0, Le/a/b/b/a/b;->d:Lcom/google/android/gms/maps/GoogleMap;

    const-string v0, "it"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->a()Lcom/google/android/gms/maps/UiSettings;

    move-result-object p1

    const-string v0, "it.uiSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/UiSettings;->a(Z)V

    .line 4
    iget-object p1, p0, Le/a/b/b/a/c;->a:Le/a/b/b/a/b;

    .line 5
    invoke-virtual {p1}, Le/a/b/b/a/b;->OA()Le/a/b/m/x;

    move-result-object p1

    .line 6
    iget-object p1, p1, Le/a/b/m/x;->g:Landroid/view/View;

    new-instance v1, Le/a/b/b/a/c$a;

    invoke-direct {v1, v0, p0}, Le/a/b/b/a/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object p1, p0, Le/a/b/b/a/c;->a:Le/a/b/b/a/b;

    .line 8
    invoke-virtual {p1}, Le/a/b/b/a/b;->OA()Le/a/b/m/x;

    move-result-object p1

    .line 9
    iget-object p1, p1, Le/a/b/m/x;->f:Landroid/widget/Button;

    new-instance v0, Le/a/b/b/a/c$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Le/a/b/b/a/c$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Le/a/b/b/a/c;->a:Le/a/b/b/a/b;

    invoke-virtual {p1}, Le/a/b/b/a/b;->PA()Le/a/b/b/a/k;

    move-result-object p1

    .line 11
    iget-object v0, p1, Le/a/b/b/a/k;->d:Lcom/google/android/gms/maps/model/LatLng;

    if-eqz v0, :cond_1

    .line 12
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/b/b/a/j;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Le/a/b/b/a/j;->zz(Lcom/google/android/gms/maps/model/LatLng;)V

    sget-object v0, Ls1/s;->a:Ls1/s;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/b/a/j;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/b/b/a/j;->s7()V

    :cond_2
    :goto_1
    return-void
.end method

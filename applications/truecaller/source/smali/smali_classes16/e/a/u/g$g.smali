.class public final Le/a/u/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/g/x/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/u/g;->Gy(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# static fields
.field public static final a:Le/a/u/g$g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Le/a/u/g$g;

    invoke-direct {v0}, Le/a/u/g$g;-><init>()V

    sput-object v0, Le/a/u/g$g;->a:Le/a/u/g$g;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/material/tabs/TabLayout$g;I)V
    .locals 0

    const-string p2, "tab"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Lcom/google/android/material/tabs/TabLayout$g;->g:Lcom/google/android/material/tabs/TabLayout$i;

    const-string p2, "tab.view"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setClickable(Z)V

    return-void
.end method

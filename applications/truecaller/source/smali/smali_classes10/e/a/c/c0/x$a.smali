.class public final Le/a/c/c0/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c0/x;-><init>(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c0/x;


# direct methods
.method public constructor <init>(Le/a/c/c0/x;)V
    .locals 0

    iput-object p1, p0, Le/a/c/c0/x$a;->a:Le/a/c/c0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/c0/x$a;->a:Le/a/c/c0/x;

    .line 2
    iget-object p1, p1, Le/a/c/c0/x;->n:Ljava/lang/String;

    .line 3
    invoke-static {p2, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Le/a/c/c0/x$a;->a:Le/a/c/c0/x;

    .line 5
    iget-object v0, p1, Le/a/c/c0/x;->o:Ljava/lang/Object;

    .line 6
    invoke-virtual {p1, p2, v0}, Le/a/c/c0/x;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Landroidx/lifecycle/LiveData;->j(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.class public final synthetic Le/a/a/g/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/o$a;


# instance fields
.field public final synthetic a:Le/a/a/g/o;

.field public final synthetic b:Landroid/util/SparseBooleanArray;

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Le/a/a/g/o;Landroid/util/SparseBooleanArray;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/b;->a:Le/a/a/g/o;

    iput-object p2, p0, Le/a/a/g/b;->b:Landroid/util/SparseBooleanArray;

    iput-boolean p3, p0, Le/a/a/g/b;->c:Z

    iput-boolean p4, p0, Le/a/a/g/b;->d:Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Le/a/a/g/b;->a:Le/a/a/g/o;

    iget-object v1, p0, Le/a/a/g/b;->b:Landroid/util/SparseBooleanArray;

    iget-boolean v2, p0, Le/a/a/g/b;->c:Z

    iget-boolean v3, p0, Le/a/a/g/b;->d:Z

    .line 1
    invoke-virtual {v0, p1, v2, v3}, Le/a/a/g/o;->l0(Ljava/lang/String;ZZ)Landroid/util/SparseBooleanArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Le/a/a/g/o;->B0(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

.class public final synthetic Le/a/a/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/g/o$a;


# instance fields
.field public final synthetic a:Le/a/a/g/o;

.field public final synthetic b:Landroid/util/SparseBooleanArray;

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Long;

.field public final synthetic e:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/a/g/o;Landroid/util/SparseBooleanArray;ZLjava/lang/Long;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/g/c;->a:Le/a/a/g/o;

    iput-object p2, p0, Le/a/a/g/c;->b:Landroid/util/SparseBooleanArray;

    iput-boolean p3, p0, Le/a/a/g/c;->c:Z

    iput-object p4, p0, Le/a/a/g/c;->d:Ljava/lang/Long;

    iput-object p5, p0, Le/a/a/g/c;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 11

    iget-object v9, p0, Le/a/a/g/c;->a:Le/a/a/g/o;

    iget-object v10, p0, Le/a/a/g/c;->b:Landroid/util/SparseBooleanArray;

    iget-boolean v2, p0, Le/a/a/g/c;->c:Z

    iget-object v4, p0, Le/a/a/g/c;->d:Ljava/lang/Long;

    iget-object v5, p0, Le/a/a/g/c;->e:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, v9

    move-object v1, p1

    .line 1
    invoke-virtual/range {v0 .. v8}, Le/a/a/g/o;->y0(Ljava/lang/String;ZZLjava/lang/Long;Ljava/lang/String;ZZZ)Landroid/util/SparseBooleanArray;

    move-result-object p1

    .line 2
    invoke-virtual {v9, v10, p1}, Le/a/a/g/o;->B0(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)V

    return-void
.end method

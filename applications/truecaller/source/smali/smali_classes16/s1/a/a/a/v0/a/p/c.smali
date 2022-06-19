.class public final Ls1/a/a/a/v0/a/p/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/a/p/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ls1/a/a/a/v0/f/a;

.field public static final f:Ls1/a/a/a/v0/f/b;

.field public static final g:Ls1/a/a/a/v0/f/a;

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/c;",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/c;",
            "Ls1/a/a/a/v0/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/c;",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ls1/a/a/a/v0/f/c;",
            "Ls1/a/a/a/v0/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/a/p/c$a;",
            ">;"
        }
    .end annotation
.end field

.field public static final m:Ls1/a/a/a/v0/a/p/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/p/c;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/p/c;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/p/c;->m:Ls1/a/a/a/v0/a/p/c;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ls1/a/a/a/v0/a/o/c;->c:Ls1/a/a/a/v0/a/o/c;

    .line 3
    iget-object v3, v2, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 4
    invoke-virtual {v3}, Ls1/a/a/a/v0/f/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-object v2, v2, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->a:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ls1/a/a/a/v0/a/o/c;->e:Ls1/a/a/a/v0/a/o/c;

    .line 8
    iget-object v4, v2, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 9
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    iget-object v2, v2, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->b:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ls1/a/a/a/v0/a/o/c;->d:Ls1/a/a/a/v0/a/o/c;

    .line 13
    iget-object v4, v2, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 14
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v2, v2, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->c:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ls1/a/a/a/v0/a/o/c;->f:Ls1/a/a/a/v0/a/o/c;

    .line 18
    iget-object v4, v2, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 19
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/b;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v2, v2, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->d:Ljava/lang/String;

    .line 22
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.jvm.functions.FunctionN"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    const-string v2, "ClassId.topLevel(FqName(\u2026vm.functions.FunctionN\"))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->e:Ls1/a/a/a/v0/f/a;

    .line 23
    invoke-virtual {v1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "FUNCTION_N_CLASS_ID.asSingleFqName()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->f:Ls1/a/a/a/v0/f/b;

    .line 24
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.reflect.KFunction"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    const-string v2, "ClassId.topLevel(FqName(\u2026tlin.reflect.KFunction\"))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->g:Ls1/a/a/a/v0/f/a;

    .line 25
    new-instance v1, Ls1/a/a/a/v0/f/b;

    const-string v2, "kotlin.reflect.KClass"

    invoke-direct {v1, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v1

    const-string v2, "ClassId.topLevel(FqName(\"kotlin.reflect.KClass\"))"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    const-class v1, Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    .line 27
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->h:Ljava/util/HashMap;

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    .line 29
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->j:Ljava/util/HashMap;

    .line 30
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Ls1/a/a/a/v0/a/p/c;->k:Ljava/util/HashMap;

    const/16 v1, 0x8

    new-array v2, v1, [Ls1/a/a/a/v0/a/p/c$a;

    .line 31
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->H:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.iterable)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->P:Ls1/a/a/a/v0/f/b;

    .line 32
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v8

    const-string v9, "kotlinReadOnly.packageFqName"

    invoke-static {v8, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v8}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    const/4 v8, 0x0

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 33
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/lang/Iterable;

    .line 34
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 35
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    aput-object v5, v2, v8

    .line 36
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->G:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.iterator)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->O:Ls1/a/a/a/v0/f/b;

    .line 37
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 38
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/Iterator;

    .line 39
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 40
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x1

    aput-object v5, v2, v4

    .line 41
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->I:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.collection)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->Q:Ls1/a/a/a/v0/f/b;

    .line 42
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 43
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/Collection;

    .line 44
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 45
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x2

    aput-object v5, v2, v4

    .line 46
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->J:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.list)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->R:Ls1/a/a/a/v0/f/b;

    .line 47
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 48
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/List;

    .line 49
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 50
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x3

    aput-object v5, v2, v4

    .line 51
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->L:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.set)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->T:Ls1/a/a/a/v0/f/b;

    .line 52
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 53
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/Set;

    .line 54
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 55
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x4

    aput-object v5, v2, v4

    .line 56
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->K:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames.listIterator)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->S:Ls1/a/a/a/v0/f/b;

    .line 57
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 58
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/ListIterator;

    .line 59
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 60
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x5

    aput-object v5, v2, v4

    .line 61
    sget-object v4, Ls1/a/a/a/v0/a/k$a;->M:Ls1/a/a/a/v0/f/b;

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v5

    const-string v6, "ClassId.topLevel(FqNames.map)"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v6, Ls1/a/a/a/v0/a/k$a;->U:Ls1/a/a/a/v0/f/b;

    .line 62
    new-instance v7, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v11

    invoke-static {v11, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v11}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v6

    invoke-direct {v7, v10, v6, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 63
    new-instance v6, Ls1/a/a/a/v0/a/p/c$a;

    const-class v10, Ljava/util/Map;

    .line 64
    invoke-virtual {v0, v10}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v10

    .line 65
    invoke-direct {v6, v10, v5, v7}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v5, 0x6

    aput-object v6, v2, v5

    .line 66
    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->N:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->g()Ls1/a/a/a/v0/f/e;

    move-result-object v5

    invoke-virtual {v4, v5}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v5, "ClassId.topLevel(FqNames\u2026mes.mapEntry.shortName())"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->V:Ls1/a/a/a/v0/f/b;

    .line 67
    new-instance v6, Ls1/a/a/a/v0/f/a;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->h()Ls1/a/a/a/v0/f/b;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v10}, Ls1/a/a/a/v0/f/d;->F3(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/b;

    move-result-object v5

    invoke-direct {v6, v7, v5, v8}, Ls1/a/a/a/v0/f/a;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/b;Z)V

    .line 68
    new-instance v5, Ls1/a/a/a/v0/a/p/c$a;

    const-class v7, Ljava/util/Map$Entry;

    .line 69
    invoke-virtual {v0, v7}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    .line 70
    invoke-direct {v5, v7, v4, v6}, Ls1/a/a/a/v0/a/p/c$a;-><init>(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    const/4 v4, 0x7

    aput-object v5, v2, v4

    .line 71
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Ls1/a/a/a/v0/a/p/c;->l:Ljava/util/List;

    .line 72
    const-class v4, Ljava/lang/Object;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->a:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 73
    const-class v4, Ljava/lang/String;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->f:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 74
    const-class v4, Ljava/lang/CharSequence;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->e:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 75
    const-class v4, Ljava/lang/Throwable;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->r:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->c(Ljava/lang/Class;Ls1/a/a/a/v0/f/b;)V

    .line 76
    const-class v4, Ljava/lang/Cloneable;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->c:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 77
    const-class v4, Ljava/lang/Number;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->p:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 78
    const-class v4, Ljava/lang/Comparable;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->s:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->c(Ljava/lang/Class;Ls1/a/a/a/v0/f/b;)V

    .line 79
    const-class v4, Ljava/lang/Enum;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->q:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V

    .line 80
    const-class v4, Ljava/lang/annotation/Annotation;

    sget-object v5, Ls1/a/a/a/v0/a/k$a;->y:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v0, v4, v5}, Ls1/a/a/a/v0/a/p/c;->c(Ljava/lang/Class;Ls1/a/a/a/v0/f/b;)V

    .line 81
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "kotlinFqNameUnsafe.toUnsafe()"

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls1/a/a/a/v0/a/p/c$a;

    .line 82
    iget-object v6, v4, Ls1/a/a/a/v0/a/p/c$a;->a:Ls1/a/a/a/v0/f/a;

    .line 83
    iget-object v7, v4, Ls1/a/a/a/v0/a/p/c$a;->b:Ls1/a/a/a/v0/f/a;

    .line 84
    iget-object v4, v4, Ls1/a/a/a/v0/a/p/c$a;->c:Ls1/a/a/a/v0/f/a;

    .line 85
    invoke-virtual {v0, v6, v7}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    .line 86
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v9

    const-string v10, "mutableClassId.asSingleFqName()"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    sget-object v11, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    invoke-virtual {v9}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v9

    invoke-static {v9, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v11, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v7}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v5

    const-string v6, "readOnlyClassId.asSingleFqName()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v6

    invoke-static {v6, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    sget-object v7, Ls1/a/a/a/v0/a/p/c;->j:Ljava/util/HashMap;

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v4

    invoke-virtual {v4}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v4

    const-string v9, "mutableClassId.asSingleFqName().toUnsafe()"

    invoke-static {v4, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v7, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v4, Ls1/a/a/a/v0/a/p/c;->k:Ljava/util/HashMap;

    invoke-virtual {v5}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v5

    const-string v7, "readOnlyFqName.toUnsafe()"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 92
    :cond_0
    invoke-static {}, Ls1/a/a/a/v0/j/w/c;->values()[Ls1/a/a/a/v0/j/w/c;

    move-result-object v2

    move v4, v8

    :goto_1
    if-ge v4, v1, :cond_1

    aget-object v6, v2, v4

    .line 93
    invoke-virtual {v6}, Ls1/a/a/a/v0/j/w/c;->f()Ls1/a/a/a/v0/f/b;

    move-result-object v7

    invoke-static {v7}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v7

    const-string v9, "ClassId.topLevel(jvmType.wrapperFqName)"

    invoke-static {v7, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v6}, Ls1/a/a/a/v0/j/w/c;->e()Ls1/a/a/a/v0/a/i;

    move-result-object v6

    const-string v9, "jvmType.primitiveType"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "primitiveType"

    .line 95
    invoke-static {v6, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    sget-object v9, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    .line 97
    iget-object v6, v6, Ls1/a/a/a/v0/a/i;->a:Ls1/a/a/a/v0/f/e;

    .line 98
    invoke-virtual {v9, v6}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object v6

    const-string v9, "BUILT_INS_PACKAGE_FQ_NAM\u2026d(primitiveType.typeName)"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {v6}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v6

    const-string v9, "ClassId.topLevel(Standar\u2026e(jvmType.primitiveType))"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, v7, v6}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 101
    :cond_1
    sget-object v1, Ls1/a/a/a/v0/a/c;->b:Ls1/a/a/a/v0/a/c;

    .line 102
    sget-object v1, Ls1/a/a/a/v0/a/c;->a:Ljava/util/Set;

    .line 103
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls1/a/a/a/v0/f/a;

    .line 104
    new-instance v4, Ls1/a/a/a/v0/f/b;

    const-string v6, "kotlin.jvm.internal."

    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ls1/a/a/a/v0/f/a;->j()Ls1/a/a/a/v0/f/e;

    move-result-object v7

    invoke-virtual {v7}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "CompanionObject"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v6, "ClassId.topLevel(FqName(\u2026g() + \"CompanionObject\"))"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    sget-object v6, Ls1/a/a/a/v0/f/g;->b:Ls1/a/a/a/v0/f/e;

    invoke-virtual {v2, v6}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object v2

    const-string v6, "classId.createNestedClas\u2026AME_FOR_COMPANION_OBJECT)"

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual {v0, v4, v2}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    goto :goto_2

    :cond_2
    const/16 v1, 0x17

    move v2, v8

    :goto_3
    if-ge v2, v1, :cond_3

    .line 107
    new-instance v4, Ls1/a/a/a/v0/f/b;

    const-string v6, "kotlin.jvm.functions.Function"

    invoke-static {v6, v2}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object v4

    const-string v6, "ClassId.topLevel(FqName(\u2026m.functions.Function$i\"))"

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ls1/a/a/a/v0/a/k;->a(I)Ls1/a/a/a/v0/f/a;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    .line 108
    new-instance v4, Ls1/a/a/a/v0/f/b;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ls1/a/a/a/v0/a/p/c;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sget-object v6, Ls1/a/a/a/v0/a/p/c;->g:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0, v4, v6}, Ls1/a/a/a/v0/a/p/c;->b(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/16 v1, 0x16

    :goto_4
    if-ge v8, v1, :cond_4

    .line 109
    sget-object v2, Ls1/a/a/a/v0/a/o/c;->f:Ls1/a/a/a/v0/a/o/c;

    .line 110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    iget-object v6, v2, Ls1/a/a/a/v0/a/o/c;->a:Ls1/a/a/a/v0/f/b;

    .line 112
    invoke-virtual {v6}, Ls1/a/a/a/v0/f/b;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    iget-object v2, v2, Ls1/a/a/a/v0/a/o/c;->b:Ljava/lang/String;

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 115
    new-instance v4, Ls1/a/a/a/v0/f/b;

    invoke-static {v2, v8}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    sget-object v2, Ls1/a/a/a/v0/a/p/c;->g:Ls1/a/a/a/v0/f/a;

    invoke-virtual {v0, v4, v2}, Ls1/a/a/a/v0/a/p/c;->b(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/a;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 116
    :cond_4
    sget-object v1, Ls1/a/a/a/v0/a/k$a;->b:Ls1/a/a/a/v0/f/c;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    const-string v2, "FqNames.nothing.toSafe()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Ljava/lang/Void;

    invoke-virtual {v0, v2}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    .line 117
    sget-object v2, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v1

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V
    .locals 3

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object v1

    const-string v2, "javaClassId.asSingleFqName().toUnsafe()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Ls1/a/a/a/v0/f/a;->b()Ls1/a/a/a/v0/f/b;

    move-result-object p2

    const-string v0, "kotlinClassId.asSingleFqName()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    invoke-virtual {p2}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object p2

    const-string v1, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/f/a;)V
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object p1

    const-string v1, "kotlinFqNameUnsafe.toUnsafe()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c(Ljava/lang/Class;Ls1/a/a/a/v0/f/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ls1/a/a/a/v0/f/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    invoke-static {p2}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p2

    const-string v0, "ClassId.topLevel(kotlinFqName)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    return-void
.end method

.method public final d(Ljava/lang/Class;Ls1/a/a/a/v0/f/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ls1/a/a/a/v0/f/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ls1/a/a/a/v0/f/c;->i()Ls1/a/a/a/v0/f/b;

    move-result-object p2

    const-string v0, "kotlinFqName.toSafe()"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    invoke-static {p2}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p2

    const-string v0, "ClassId.topLevel(kotlinFqName)"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/a/p/c;->a(Ls1/a/a/a/v0/f/a;Ls1/a/a/a/v0/f/a;)V

    return-void
.end method

.method public final e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ls1/a/a/a/v0/f/a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Ls1/a/a/a/v0/f/b;

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ls1/a/a/a/v0/f/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ls1/a/a/a/v0/f/a;->l(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    const-string v0, "ClassId.topLevel(FqName(clazz.canonicalName))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Ls1/a/a/a/v0/a/p/c;->e(Ljava/lang/Class;)Ls1/a/a/a/v0/f/a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object p1

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/f/a;->d(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/a;

    move-result-object p1

    const-string v0, "classId(outer).createNes\u2026tifier(clazz.simpleName))"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method public final f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Ls1/a/a/a/v0/f/c;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "kotlinFqName.asString()"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-static {p1, p2, v0}, Ls1/f0/v;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    if-eqz p2, :cond_2

    const/16 p2, 0x30

    const/4 v2, 0x2

    invoke-static {p1, p2, v1, v2}, Ls1/f0/v;->W(Ljava/lang/CharSequence;CZI)Z

    move-result p2

    if-nez p2, :cond_2

    .line 3
    invoke-static {p1}, Ls1/f0/q;->h(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x17

    if-lt p1, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    :cond_2
    return v1
.end method

.method public final g(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/f/a;
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ls1/a/a/a/v0/f/b;->j()Ls1/a/a/a/v0/f/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/f/a;

    return-object p1
.end method

.method public final h(Ls1/a/a/a/v0/f/c;)Ls1/a/a/a/v0/f/a;
    .locals 1

    const-string v0, "kotlinFqName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/a/p/c;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ls1/a/a/a/v0/a/p/c;->e:Ls1/a/a/a/v0/f/a;

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/a/p/c;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Ls1/a/a/a/v0/a/p/c;->e:Ls1/a/a/a/v0/f/a;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/a/p/c;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Ls1/a/a/a/v0/a/p/c;->g:Ls1/a/a/a/v0/f/a;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ls1/a/a/a/v0/a/p/c;->f(Ls1/a/a/a/v0/f/c;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Ls1/a/a/a/v0/a/p/c;->g:Ls1/a/a/a/v0/f/a;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Ls1/a/a/a/v0/a/p/c;->i:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/f/a;

    :goto_0
    return-object p1
.end method

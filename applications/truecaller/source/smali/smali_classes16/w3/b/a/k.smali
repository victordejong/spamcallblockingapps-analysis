.class public abstract Lw3/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw3/b/a/k$a;
    }
.end annotation


# static fields
.field public static final b:Lw3/b/a/k;

.field public static final c:Lw3/b/a/k;

.field public static final d:Lw3/b/a/k;

.field public static final e:Lw3/b/a/k;

.field public static final f:Lw3/b/a/k;

.field public static final g:Lw3/b/a/k;

.field public static final h:Lw3/b/a/k;

.field public static final i:Lw3/b/a/k;

.field public static final j:Lw3/b/a/k;

.field public static final k:Lw3/b/a/k;

.field public static final l:Lw3/b/a/k;

.field public static final m:Lw3/b/a/k;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->b:Lw3/b/a/k;

    .line 2
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->c:Lw3/b/a/k;

    .line 3
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->d:Lw3/b/a/k;

    .line 4
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->e:Lw3/b/a/k;

    .line 5
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->f:Lw3/b/a/k;

    .line 6
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->g:Lw3/b/a/k;

    .line 7
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->h:Lw3/b/a/k;

    .line 8
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->i:Lw3/b/a/k;

    .line 9
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->j:Lw3/b/a/k;

    .line 10
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->k:Lw3/b/a/k;

    .line 11
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->l:Lw3/b/a/k;

    .line 12
    new-instance v0, Lw3/b/a/k$a;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lw3/b/a/k$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lw3/b/a/k;->m:Lw3/b/a/k;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lw3/b/a/k;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Lw3/b/a/a;)Lw3/b/a/j;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/k;->a:Ljava/lang/String;

    return-object v0
.end method

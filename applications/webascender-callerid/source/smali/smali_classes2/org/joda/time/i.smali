.class public abstract Lorg/joda/time/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/joda/time/i$a;
    }
.end annotation


# static fields
.field static final g:Lorg/joda/time/i;

.field static final h:Lorg/joda/time/i;

.field static final i:Lorg/joda/time/i;

.field static final j:Lorg/joda/time/i;

.field static final k:Lorg/joda/time/i;

.field static final l:Lorg/joda/time/i;

.field static final m:Lorg/joda/time/i;

.field static final n:Lorg/joda/time/i;

.field static final o:Lorg/joda/time/i;

.field static final p:Lorg/joda/time/i;

.field static final q:Lorg/joda/time/i;

.field static final r:Lorg/joda/time/i;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "eras"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->g:Lorg/joda/time/i;

    .line 2
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "centuries"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->h:Lorg/joda/time/i;

    .line 3
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "weekyears"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->i:Lorg/joda/time/i;

    .line 4
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "years"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->j:Lorg/joda/time/i;

    .line 5
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "months"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->k:Lorg/joda/time/i;

    .line 6
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "weeks"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->l:Lorg/joda/time/i;

    .line 7
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "days"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->m:Lorg/joda/time/i;

    .line 8
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "halfdays"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->n:Lorg/joda/time/i;

    .line 9
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "hours"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->o:Lorg/joda/time/i;

    .line 10
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "minutes"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->p:Lorg/joda/time/i;

    .line 11
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "seconds"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->q:Lorg/joda/time/i;

    .line 12
    new-instance v0, Lorg/joda/time/i$a;

    const-string v1, "millis"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/joda/time/i$a;-><init>(Ljava/lang/String;B)V

    sput-object v0, Lorg/joda/time/i;->r:Lorg/joda/time/i;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/joda/time/i;->f:Ljava/lang/String;

    return-void
.end method

.method public static a()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->h:Lorg/joda/time/i;

    return-object v0
.end method

.method public static b()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->m:Lorg/joda/time/i;

    return-object v0
.end method

.method public static c()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->g:Lorg/joda/time/i;

    return-object v0
.end method

.method public static f()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->n:Lorg/joda/time/i;

    return-object v0
.end method

.method public static g()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->o:Lorg/joda/time/i;

    return-object v0
.end method

.method public static h()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->r:Lorg/joda/time/i;

    return-object v0
.end method

.method public static i()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->p:Lorg/joda/time/i;

    return-object v0
.end method

.method public static j()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->k:Lorg/joda/time/i;

    return-object v0
.end method

.method public static k()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->q:Lorg/joda/time/i;

    return-object v0
.end method

.method public static l()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->l:Lorg/joda/time/i;

    return-object v0
.end method

.method public static m()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->i:Lorg/joda/time/i;

    return-object v0
.end method

.method public static n()Lorg/joda/time/i;
    .locals 1

    .line 1
    sget-object v0, Lorg/joda/time/i;->j:Lorg/joda/time/i;

    return-object v0
.end method


# virtual methods
.method public abstract d(Lorg/joda/time/a;)Lorg/joda/time/h;
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/i;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

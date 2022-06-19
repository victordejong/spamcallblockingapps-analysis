.class public final Lm/k0/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/d/c$b;,
        Lm/k0/d/c$a;
    }
.end annotation


# static fields
.field public static final c:Lm/k0/d/c$a;


# instance fields
.field private final a:Lm/e0;

.field private final b:Lm/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/k0/d/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/k0/d/c$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/k0/d/c;->c:Lm/k0/d/c$a;

    return-void
.end method

.method public constructor <init>(Lm/e0;Lm/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/d/c;->a:Lm/e0;

    iput-object p2, p0, Lm/k0/d/c;->b:Lm/g0;

    return-void
.end method


# virtual methods
.method public final a()Lm/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/c;->b:Lm/g0;

    return-object v0
.end method

.method public final b()Lm/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/c;->a:Lm/e0;

    return-object v0
.end method

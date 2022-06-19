.class public final Lm/b0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/b0$b$a;
    }
.end annotation


# static fields
.field public static final c:Lm/b0$b$a;


# instance fields
.field private final a:Lm/x;

.field private final b:Lm/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/b0$b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/b0$b$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/b0$b;->c:Lm/b0$b$a;

    return-void
.end method

.method private constructor <init>(Lm/x;Lm/f0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/b0$b;->a:Lm/x;

    iput-object p2, p0, Lm/b0$b;->b:Lm/f0;

    return-void
.end method

.method public synthetic constructor <init>(Lm/x;Lm/f0;Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lm/b0$b;-><init>(Lm/x;Lm/f0;)V

    return-void
.end method


# virtual methods
.method public final a()Lm/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b0$b;->b:Lm/f0;

    return-object v0
.end method

.method public final b()Lm/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/b0$b;->a:Lm/x;

    return-object v0
.end method
